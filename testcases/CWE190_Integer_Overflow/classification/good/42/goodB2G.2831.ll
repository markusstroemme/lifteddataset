@global_var_67c08 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_67c00 = external constant [3 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_11e7f:
  %0 = load ptr, ptr @global_var_9c070, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_67c00)
  ret i32 %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_11eb5:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_11ef0, label %dec_label_pc_11edb

dec_label_pc_11edb:                               ; preds = %dec_label_pc_11eb5
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_11eff

dec_label_pc_11ef0:                               ; preds = %dec_label_pc_11eb5
  call void @printLine(ptr @global_var_67c08)
  br label %dec_label_pc_11eff

dec_label_pc_11eff:                               ; preds = %dec_label_pc_11ef0, %dec_label_pc_11edb
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

