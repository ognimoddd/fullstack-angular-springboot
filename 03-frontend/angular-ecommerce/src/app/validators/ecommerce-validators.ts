import { FormControl, ValidationErrors } from "@angular/forms";

export class EcommerceValidators {

    // whitespace validation
    static notOnlyWhitespace(control: FormControl) : ValidationErrors {

        // check if string contains only whitespace
        if (control.value != null && (control.value.trim().length === 0)) {

            // invalid, return error object
            return { 'notOnlyWhitespace': true };
        } else {

            // valid, return null
            return null;
        }
    }
}
