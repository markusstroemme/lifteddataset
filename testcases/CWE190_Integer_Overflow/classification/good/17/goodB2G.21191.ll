@global_var_8c308 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_676d3:
  %0 = call i32 @rand()
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = urem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  %6 = mul i32 %1, 1073741824
  %7 = mul i32 %2, 32768
  %8 = xor i32 %7, %6
  %9 = xor i32 %8, %3
  %10 = sext i1 %5 to i32
  %storemerge2.in.le = xor i32 %9, %10
  %11 = icmp eq i32 %storemerge2.in.le, -1
  br i1 %11, label %dec_label_pc_676ef, label %dec_label_pc_676d9

dec_label_pc_676d9:                               ; preds = %dec_label_pc_676d3
  %12 = add i32 %storemerge2.in.le, 1
  call void @printUnsignedLine(i32 %12)
  br label %dec_label_pc_67708

dec_label_pc_676ef:                               ; preds = %dec_label_pc_676d3
  call void @printLine(ptr @global_var_8c308)
  br label %dec_label_pc_67708

dec_label_pc_67708:                               ; preds = %dec_label_pc_676d9, %dec_label_pc_676ef
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

