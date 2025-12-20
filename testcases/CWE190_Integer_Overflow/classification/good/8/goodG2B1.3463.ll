@global_var_6818b = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.342() local_unnamed_addr {
dec_label_pc_147cd:
  ret i32 1
}

define i32 @staticReturnsFalse.343() local_unnamed_addr {
dec_label_pc_147dc:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_149e2:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.343()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_14a1b, label %dec_label_pc_14a03

dec_label_pc_14a03:                               ; preds = %dec_label_pc_149e2
  call void @printLine(ptr @global_var_6818b)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_14a1b

dec_label_pc_14a1b:                               ; preds = %dec_label_pc_149e2, %dec_label_pc_14a03
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %2 = call i32 @staticReturnsTrue.342()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i32 %stack_var_-16.0.reload, 0
  %or.cond = or i1 %4, %3
  br i1 %or.cond, label %dec_label_pc_14a41, label %dec_label_pc_14a2f

dec_label_pc_14a2f:                               ; preds = %dec_label_pc_14a1b
  %5 = mul i32 %stack_var_-16.0.reload, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_14a41

dec_label_pc_14a41:                               ; preds = %dec_label_pc_14a2f, %dec_label_pc_14a1b
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

