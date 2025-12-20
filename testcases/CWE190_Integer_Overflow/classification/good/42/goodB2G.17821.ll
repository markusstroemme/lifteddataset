@global_var_8a7a8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define i16 @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_5a9f9:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = mul i32 %4, 32768
  %6 = call i32 @rand()
  %7 = xor i32 %6, %5
  %8 = sext i1 %2 to i32
  %storemerge.in = xor i32 %7, %8
  %9 = trunc i32 %storemerge.in to i16
  ret i16 %9
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5aa56:
  %0 = call i16 @anon0(i16 0)
  %1 = icmp eq i16 %0, 32767
  br i1 %1, label %dec_label_pc_5aa9f, label %dec_label_pc_5aa7f

dec_label_pc_5aa7f:                               ; preds = %dec_label_pc_5aa56
  %2 = zext i16 %0 to i32
  %3 = mul i32 %2, 65536
  %sext = add i32 %3, 65536
  %4 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_5aaae

dec_label_pc_5aa9f:                               ; preds = %dec_label_pc_5aa56
  call void @printLine(ptr @global_var_8a7a8)
  br label %dec_label_pc_5aaae

dec_label_pc_5aaae:                               ; preds = %dec_label_pc_5aa9f, %dec_label_pc_5aa7f
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

