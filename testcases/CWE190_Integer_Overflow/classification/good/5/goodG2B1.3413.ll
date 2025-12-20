@global_var_70e78 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9020 = external local_unnamed_addr global i32
@global_var_a9104 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14f01:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_a9104, align 4
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_14f36, label %dec_label_pc_14f1e

dec_label_pc_14f1e:                               ; preds = %dec_label_pc_14f01
  call void @printLine(ptr @global_var_70e78)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_14f36

dec_label_pc_14f36:                               ; preds = %dec_label_pc_14f01, %dec_label_pc_14f1e
  %2 = load i32, ptr @global_var_a9020, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_14f53, label %dec_label_pc_14f40

dec_label_pc_14f40:                               ; preds = %dec_label_pc_14f36
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_14f53

dec_label_pc_14f53:                               ; preds = %dec_label_pc_14f40, %dec_label_pc_14f36
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

