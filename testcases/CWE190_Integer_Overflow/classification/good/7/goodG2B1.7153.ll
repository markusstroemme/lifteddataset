@global_var_72e0c = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a903c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_24f3c:
  %stack_var_-12.03.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_a903c, align 4
  %1 = icmp eq i32 %0, 5
  store i32 2, ptr %stack_var_-12.03.reg2mem, align 4
  br i1 %1, label %dec_label_pc_24f7b, label %dec_label_pc_24f70

dec_label_pc_24f70:                               ; preds = %dec_label_pc_24f3c
  call void @printLine(ptr @global_var_72e0c)
  %.pre = load i32, ptr @global_var_a903c, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp2 = icmp eq i1 %phitmp, false
  store i32 0, ptr %stack_var_-12.03.reg2mem, align 4
  br i1 %phitmp2, label %dec_label_pc_24f95, label %dec_label_pc_24f7b

dec_label_pc_24f7b:                               ; preds = %dec_label_pc_24f3c, %dec_label_pc_24f70
  %stack_var_-12.03.reload = load i32, ptr %stack_var_-12.03.reg2mem, align 4
  %narrow = mul nuw nsw i32 %stack_var_-12.03.reload, %stack_var_-12.03.reload
  call void @printIntLine(i32 %narrow)
  br label %dec_label_pc_24f95

dec_label_pc_24f95:                               ; preds = %dec_label_pc_24f7b, %dec_label_pc_24f70
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

