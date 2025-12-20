@global_var_6773b = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.220() local_unnamed_addr {
dec_label_pc_f997:
  ret i32 1
}

define i32 @staticReturnsFalse.221() local_unnamed_addr {
dec_label_pc_f9a6:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_fb96:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.221()
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_fbcf, label %dec_label_pc_fbb7

dec_label_pc_fbb7:                                ; preds = %dec_label_pc_fb96
  call void @printLine(ptr @global_var_6773b)
  store i32 1, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_fbcf

dec_label_pc_fbcf:                                ; preds = %dec_label_pc_fb96, %dec_label_pc_fbb7
  %2 = call i32 @staticReturnsTrue.220()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_fbf0, label %dec_label_pc_fbdd

dec_label_pc_fbdd:                                ; preds = %dec_label_pc_fbcf
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  call void @printUnsignedLine(i32 %stack_var_-16.0.reload)
  br label %dec_label_pc_fbf0

dec_label_pc_fbf0:                                ; preds = %dec_label_pc_fbdd, %dec_label_pc_fbcf
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

