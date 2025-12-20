@global_var_850d0 = external constant [21 x i8]
@global_var_8c32c = external constant [4 x i8]

define i32 @staticReturnsTrue.839() local_unnamed_addr {
dec_label_pc_31fb8:
  ret i32 1
}

define i32 @staticReturnsFalse.840() local_unnamed_addr {
dec_label_pc_31fc7:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_324b6:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.840()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_324ef, label %dec_label_pc_324d7

dec_label_pc_324d7:                               ; preds = %dec_label_pc_324b6
  call void @printLine(ptr @global_var_850d0)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_324ef

dec_label_pc_324ef:                               ; preds = %dec_label_pc_324b6, %dec_label_pc_324d7
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %2 = call i32 @staticReturnsTrue.839()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i32 %stack_var_-16.0.reload, 0
  %or.cond = or i1 %4, %3
  br i1 %or.cond, label %dec_label_pc_32515, label %dec_label_pc_32503

dec_label_pc_32503:                               ; preds = %dec_label_pc_324ef
  %5 = mul i32 %stack_var_-16.0.reload, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_32515

dec_label_pc_32515:                               ; preds = %dec_label_pc_32503, %dec_label_pc_324ef
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

