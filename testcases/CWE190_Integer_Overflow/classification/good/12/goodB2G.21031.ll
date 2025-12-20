@global_var_8c1c0 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_66b05:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge2.in = xor i32 %10, %11
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %storemerge2.in, -1
  br i1 %13, label %dec_label_pc_66bf6, label %dec_label_pc_66bc9

dec_label_pc_66bc9:                               ; preds = %dec_label_pc_66b05
  br i1 %14, label %dec_label_pc_66be5, label %dec_label_pc_66bcf

dec_label_pc_66bcf:                               ; preds = %dec_label_pc_66bc9
  %15 = add i32 %storemerge2.in, 1
  call void @printUnsignedLine(i32 %15)
  br label %dec_label_pc_66c21

dec_label_pc_66be5:                               ; preds = %dec_label_pc_66bc9
  call void @printLine(ptr @global_var_8c1c0)
  br label %dec_label_pc_66c21

dec_label_pc_66bf6:                               ; preds = %dec_label_pc_66b05
  br i1 %14, label %dec_label_pc_66c12, label %dec_label_pc_66bfc

dec_label_pc_66bfc:                               ; preds = %dec_label_pc_66bf6
  %16 = add i32 %storemerge2.in, 1
  call void @printUnsignedLine(i32 %16)
  br label %dec_label_pc_66c21

dec_label_pc_66c12:                               ; preds = %dec_label_pc_66bf6
  call void @printLine(ptr @global_var_8c1c0)
  br label %dec_label_pc_66c21

dec_label_pc_66c21:                               ; preds = %dec_label_pc_66c12, %dec_label_pc_66bfc, %dec_label_pc_66be5, %dec_label_pc_66bcf
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

