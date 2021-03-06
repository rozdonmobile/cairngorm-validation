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
	import mx.validators.ValidationResult;
	import mx.validators.Validator;

	public class BooleanValidator extends Validator
	{
		public static const DEFAULT_ERROR_MESSAGE:String="Expected true but was false";

		public static var errorMessage:String=DEFAULT_ERROR_MESSAGE;

		public function BooleanValidator()
		{
			super();
		}

		public static function validateBoolean(validator:BooleanValidator, value:Boolean, baseField:String=null):Array
		{
			var results:Array=[];

			if (!value)
			{
				results.push(new ValidationResult(true, "baseField", "invalid value", errorMessage));
				return results;
			}

			return results;
		}

		override protected function doValidation(value:Object):Array
		{
			var results:Array=super.doValidation(value);

			if (results.length > 0)
				return results;
			else
				return BooleanValidator.validateBoolean(this, (value as Boolean), null);
		}
	}

}