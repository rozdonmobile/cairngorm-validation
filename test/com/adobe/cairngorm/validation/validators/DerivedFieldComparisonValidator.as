/**
 *  Copyright (c) 2007 - 2009 Adobe
 *  All rights reserved.
 *
 *  Permission is hereby granted, free of charge, to any person obtaining
 *  a copy of this software and associated documentation files (the "Software"),
 *  to deal in the Software without restriction, including without limitation
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense,
 *  and/or sell copies of the Software, and to permit persons to whom the
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included
 *  in all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 *  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 *  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 *  IN THE SOFTWARE.
 */
package com.adobe.cairngorm.validation.validators
{

	/**
	 * Derived from FailedComparisonValidator to help with testing.
	 */
	public class DerivedFieldComparisonValidator
		extends FieldComparisonValidator
	{
		/**
		 * Helper method for calling "doValidation", which is useful for
		 * testing. Returns a Boolean value that indicates if the source is
		 * valid.
		 */
		public function isValid() : Boolean
		{
			return ValidatorHelper.isValid( doValidation( "" ) );
		}
		
		/**
		 * Return the value of '_destFired'.
		 */
		public function isDestFired() : Boolean
		{
			return _destFired;
		}
		
		/**
		 * Return the value of '_validationDone'.
		 */
		public function isValidationDone() : Boolean
		{
			return _validationDone;
		}
	}
}