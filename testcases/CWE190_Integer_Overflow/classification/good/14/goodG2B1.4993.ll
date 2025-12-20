@global_var_71b1c = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1bcbb:
  %stack_var_-12.03.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_a9074, align 4
  %1 = icmp eq i32 %0, 5
  store i32 3, ptr %stack_var_-12.03.reg2mem, align 4
  br i1 %1, label %dec_label_pc_1bcfa, label %dec_label_pc_1bcef

dec_label_pc_1bcef:                               ; preds = %dec_label_pc_1bcbb
  call void @printLine(ptr @global_var_71b1c)
  %.pre = load i32, ptr @global_var_a9074, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp2 = icmp eq i1 %phitmp, false
  store i32 1, ptr %stack_var_-12.03.reg2mem, align 4
  br i1 %phitmp2, label %dec_label_pc_1bd10, label %dec_label_pc_1bcfa

dec_label_pc_1bcfa:                               ; preds = %dec_label_pc_1bcbb, %dec_label_pc_1bcef
  %stack_var_-12.03.reload = load i32, ptr %stack_var_-12.03.reg2mem, align 4
  call void @printIntLine(i32 %stack_var_-12.03.reload)
  br label %dec_label_pc_1bd10

dec_label_pc_1bd10:                               ; preds = %dec_label_pc_1bcfa, %dec_label_pc_1bcef
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

