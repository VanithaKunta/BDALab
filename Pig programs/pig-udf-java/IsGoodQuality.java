import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.pig.FilterFunc;
import org.apache.pig.backend.executionengine.ExecException;
import org.apache.pig.data.DataType;
import org.apache.pig.data.Tuple;
import org.apache.pig.impl.logicalLayer.FrontendException;
public class IsGoodQuality extends FilterFunc {
	@Override
	public Boolean exec(Tuple tuple) throws IOException {
		if (tuple == null || tuple.size() == 0) {
			return false;
		}
		try {
			Object object = tuple.get(0);
			if (object == null) {
			return false;
		}
		int i = (Integer) object;
		return i == 0 || i == 1 || i == 4 || i == 5 || i == 9;
		} catch (ExecException e) {
			throw new IOException(e);
		}
	}
}
