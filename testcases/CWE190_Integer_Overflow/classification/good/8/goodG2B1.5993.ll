@global_var_723c4 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.595() local_unnamed_addr {
dec_label_pc_1fc03:
  ret i32 1
}

define i32 @staticReturnsFalse.596() local_unnamed_addr {
dec_label_pc_1fc12:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1fe24:
  %stack_var_-12.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.596()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-12.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_1fe5b, label %dec_label_pc_1fe44

dec_label_pc_1fe44:                               ; preds = %dec_label_pc_1fe24
  call void @printLine(ptr @global_var_723c4)
  store i32 0, ptr %stack_var_-12.0.reg2mem, align 4
  br label %dec_label_pc_1fe5b

dec_label_pc_1fe5b:                               ; preds = %dec_label_pc_1fe24, %dec_label_pc_1fe44
  %stack_var_-12.0.reload = load i32, ptr %stack_var_-12.0.reg2mem, align 4
  %2 = call i32 @staticReturnsTrue.595()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i32 %stack_var_-12.0.reload, 0
  %or.cond = or i1 %4, %3
  br i1 %or.cond, label %dec_label_pc_1fe85, label %dec_label_pc_1fe70

dec_label_pc_1fe70:                               ; preds = %dec_label_pc_1fe5b
  %sext = mul i32 %stack_var_-12.0.reload, 2
  call void @printIntLine(i32 %sext)
  br label %dec_label_pc_1fe85

dec_label_pc_1fe85:                               ; preds = %dec_label_pc_1fe70, %dec_label_pc_1fe5b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

