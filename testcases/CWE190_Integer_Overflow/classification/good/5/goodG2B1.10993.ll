@global_var_87198 = external constant [21 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc058 = external local_unnamed_addr global i32
@global_var_bc2fc = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3bebb:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_bc2fc, align 4
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3bef0, label %dec_label_pc_3bed8

dec_label_pc_3bed8:                               ; preds = %dec_label_pc_3bebb
  call void @printLine(ptr @global_var_87198)
  store i32 1, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_3bef0

dec_label_pc_3bef0:                               ; preds = %dec_label_pc_3bebb, %dec_label_pc_3bed8
  %2 = load i32, ptr @global_var_bc058, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3bf0e, label %dec_label_pc_3befa

dec_label_pc_3befa:                               ; preds = %dec_label_pc_3bef0
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  call void @printIntLine(i32 %stack_var_-16.0.reload)
  br label %dec_label_pc_3bf0e

dec_label_pc_3bf0e:                               ; preds = %dec_label_pc_3befa, %dec_label_pc_3bef0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

