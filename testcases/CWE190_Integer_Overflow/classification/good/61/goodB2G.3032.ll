@global_var_67dc0 = external constant [54 x i8]
@global_var_67df6 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_12b5a:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_12b95, label %dec_label_pc_12b80

dec_label_pc_12b80:                               ; preds = %dec_label_pc_12b5a
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_12ba4

dec_label_pc_12b95:                               ; preds = %dec_label_pc_12b5a
  call void @printLine(ptr @global_var_67dc0)
  br label %dec_label_pc_12ba4

dec_label_pc_12ba4:                               ; preds = %dec_label_pc_12b95, %dec_label_pc_12b80
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_12c13:
  %stack_var_-12 = alloca i32, align 4
  store i32 %data, ptr %stack_var_-12, align 4
  %0 = load ptr, ptr @global_var_9c070, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_67df6, ptr nonnull %stack_var_-12)
  %2 = load i32, ptr %stack_var_-12, align 4
  ret i32 %2
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

