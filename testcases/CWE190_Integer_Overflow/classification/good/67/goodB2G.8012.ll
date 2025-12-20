@global_var_6a6a8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_24b68:
  call void @anon0(i64 4294967295)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_24c14:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_24c5b, label %dec_label_pc_24c2f

dec_label_pc_24c2f:                               ; preds = %dec_label_pc_24c14
  %2 = icmp ult i32 %0, 2147483647
  br i1 %2, label %dec_label_pc_24c38, label %dec_label_pc_24c4c

dec_label_pc_24c38:                               ; preds = %dec_label_pc_24c2f
  %3 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_24c5b

dec_label_pc_24c4c:                               ; preds = %dec_label_pc_24c2f
  call void @printLine(ptr @global_var_6a6a8)
  br label %dec_label_pc_24c5b

dec_label_pc_24c5b:                               ; preds = %dec_label_pc_24c4c, %dec_label_pc_24c38, %dec_label_pc_24c14
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

