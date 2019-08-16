namespace calculation_console
{
    public class Subtraction : ICalculation
    {
        private readonly decimal x;
        private readonly decimal y;

        private readonly decimal z;

        public decimal w;
        public Subtraction(decimal x, decimal y)
        {
            this.x = x;
            this.y = y;
        }

        public decimal Calculate()
        {
            return x - y;
        }


    }
}