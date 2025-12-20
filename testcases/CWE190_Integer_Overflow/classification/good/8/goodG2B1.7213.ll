@global_var_72e64 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.717() local_unnamed_addr {
dec_label_pc_25016:
  ret i32 1
}

define i32 @staticReturnsFalse.718() local_unnamed_addr {
dec_label_pc_25025:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_25241:
  %stack_var_-12.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.718()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-12.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_25278, label %dec_label_pc_25261

dec_label_pc_25261:                               ; preds = %dec_label_pc_25241
  call void @printLine(ptr @global_var_72e64)
  store i32 0, ptr %stack_var_-12.0.reg2mem, align 4
  br label %dec_label_pc_25278

dec_label_pc_25278:                               ; preds = %dec_label_pc_25241, %dec_label_pc_25261
  %2 = call i32 @staticReturnsTrue.717()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_252a0, label %dec_label_pc_25286

dec_label_pc_25286:                               ; preds = %dec_label_pc_25278
  %stack_var_-12.0.reload = load i32, ptr %stack_var_-12.0.reg2mem, align 4
  %narrow = mul nuw nsw i32 %stack_var_-12.0.reload, %stack_var_-12.0.reload
  call void @printIntLine(i32 %narrow)
  br label %dec_label_pc_252a0

dec_label_pc_252a0:                               ; preds = %dec_label_pc_25286, %dec_label_pc_25278
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

