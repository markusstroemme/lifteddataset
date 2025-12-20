@global_var_6bc10 = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.1074() local_unnamed_addr {
dec_label_pc_2ecba:
  ret i32 1
}

define i32 @staticReturnsFalse.1075() local_unnamed_addr {
dec_label_pc_2ecc9:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2eee5:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.1075()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_2ef1e, label %dec_label_pc_2ef06

dec_label_pc_2ef06:                               ; preds = %dec_label_pc_2eee5
  call void @printLine(ptr @global_var_6bc10)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_2ef1e

dec_label_pc_2ef1e:                               ; preds = %dec_label_pc_2eee5, %dec_label_pc_2ef06
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %2 = call i32 @staticReturnsTrue.1074()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i32 %stack_var_-16.0.reload, 0
  %or.cond = or i1 %4, %3
  br i1 %or.cond, label %dec_label_pc_2ef44, label %dec_label_pc_2ef32

dec_label_pc_2ef32:                               ; preds = %dec_label_pc_2ef1e
  %5 = mul i32 %stack_var_-16.0.reload, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_2ef44

dec_label_pc_2ef44:                               ; preds = %dec_label_pc_2ef32, %dec_label_pc_2ef1e
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

