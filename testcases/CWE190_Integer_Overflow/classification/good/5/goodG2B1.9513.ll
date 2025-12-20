@global_var_85958 = external constant [21 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8048 = external local_unnamed_addr global i32
@global_var_b8230 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3bdfd:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_b8230, align 4
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3be32, label %dec_label_pc_3be1a

dec_label_pc_3be1a:                               ; preds = %dec_label_pc_3bdfd
  call void @printLine(ptr @global_var_85958)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_3be32

dec_label_pc_3be32:                               ; preds = %dec_label_pc_3bdfd, %dec_label_pc_3be1a
  %2 = load i32, ptr @global_var_b8048, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3be4f, label %dec_label_pc_3be3c

dec_label_pc_3be3c:                               ; preds = %dec_label_pc_3be32
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_3be4f

dec_label_pc_3be4f:                               ; preds = %dec_label_pc_3be3c, %dec_label_pc_3be32
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

