import * as React from "react";
import Box from "@mui/material/Box";
import Stepper from "@mui/material/Stepper";
import Step from "@mui/material/Step";
import StepLabel from "@mui/material/StepLabel";
import StepContent from "@mui/material/StepContent";
import Button from "@mui/material/Button";
import Typography from "@mui/material/Typography";
import { Divider } from "@mui/material";

type VerticalLinearStepperProps = {
  steps: Array<{
    label: string;
    description: string;
    content?: React.ReactNode;
    nextButtonText?: string;
    prevButtonText?: string;
  }>;
};

export default function VerticalLinearStepper(
  props: VerticalLinearStepperProps
) {
  const { steps } = props;

  const [activeStep, setActiveStep] = React.useState(0);

  const handleNext = () => {
    setActiveStep((prevActiveStep) => prevActiveStep + 1);
  };

  const handleBack = () => {
    setActiveStep((prevActiveStep) => prevActiveStep - 1);
  };

  return (
    <>
      <Stepper
        activeStep={activeStep}
        orientation="vertical"
        sx={{ width: "100%" }}
      >
        {steps.map((step, index) => (
          <Step key={step.label}>
            <StepLabel
              sx={{
                "& text": {
                  fontSize: "1rem",
                },
              }}
            >
              <Typography variant="h3">{step.label}</Typography>
            </StepLabel>
            <StepContent>
              <Typography
                variant="body1"
                sx={{
                  textAlign: "center",
                  my: 5,
                  fontWeight: "normal",
                }}
                dangerouslySetInnerHTML={{ __html: step.description }}
              />

              {step.description && <Divider />}

              <Box sx={{ mt: 5 }}>{step.content}</Box>

              <Box sx={{ my: 2 }}>
                <div>
                  {activeStep !== steps.length - 1 && (
                    <Button
                      variant="contained"
                      onClick={handleNext}
                      sx={{ mt: 1, mr: 1 }}
                    >
                      {step.nextButtonText
                        ? step.nextButtonText
                        : "Volgende stap"}
                    </Button>
                  )}
                  {index !== 0 && (
                    <Button
                      disabled={index === 0}
                      onClick={handleBack}
                      sx={{ mt: 1, mr: 1 }}
                      variant="outlined"
                    >
                      {step.prevButtonText ? step.prevButtonText : "Terug"}
                    </Button>
                  )}
                </div>
              </Box>
            </StepContent>
          </Step>
        ))}
      </Stepper>
    </>
  );
}
