@global_var_8c5a0 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_68b3a:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  call void @anon0(i32 %storemerge.in)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_68c13:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_68c3e, label %dec_label_pc_68c28

dec_label_pc_68c28:                               ; preds = %dec_label_pc_68c13
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_68c4d

dec_label_pc_68c3e:                               ; preds = %dec_label_pc_68c13
  call void @printLine(ptr @global_var_8c5a0)
  br label %dec_label_pc_68c4d

dec_label_pc_68c4d:                               ; preds = %dec_label_pc_68c3e, %dec_label_pc_68c28
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

