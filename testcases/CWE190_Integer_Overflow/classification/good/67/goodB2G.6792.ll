@global_var_69d28 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_20f80:
  call void @anon0(i64 4294967295)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_21022:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_21052, label %dec_label_pc_2103d

dec_label_pc_2103d:                               ; preds = %dec_label_pc_21022
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_21061

dec_label_pc_21052:                               ; preds = %dec_label_pc_21022
  call void @printLine(ptr @global_var_69d28)
  br label %dec_label_pc_21061

dec_label_pc_21061:                               ; preds = %dec_label_pc_21052, %dec_label_pc_2103d
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

