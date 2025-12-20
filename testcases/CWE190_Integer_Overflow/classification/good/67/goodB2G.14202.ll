@global_var_87de8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_50196:
  call void @anon0(i64 2147483647)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_50238:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, -2147483648
  br i1 %1, label %dec_label_pc_5027d, label %dec_label_pc_50256

dec_label_pc_50256:                               ; preds = %dec_label_pc_50238
  %sext = mul i64 %myStruct, 4294967296
  %2 = ashr exact i64 %sext, 32
  %3 = trunc i64 %2 to i32
  %.off = add i32 %3, 46339
  %4 = icmp ugt i32 %.off, 92678
  br i1 %4, label %dec_label_pc_5027d, label %dec_label_pc_50268

dec_label_pc_50268:                               ; preds = %dec_label_pc_50256
  %5 = mul nsw i64 %2, %2
  %6 = trunc i64 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_5028d

dec_label_pc_5027d:                               ; preds = %dec_label_pc_50256, %dec_label_pc_50238
  call void @printLine(ptr @global_var_87de8)
  br label %dec_label_pc_5028d

dec_label_pc_5028d:                               ; preds = %dec_label_pc_5027d, %dec_label_pc_50268
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

