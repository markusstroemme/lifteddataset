@global_var_81230 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_bb26:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_bba8, label %dec_label_pc_bb56

dec_label_pc_bb56:                                ; preds = %dec_label_pc_bb26
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_bb99, label %dec_label_pc_bb88

dec_label_pc_bb88:                                ; preds = %dec_label_pc_bb56
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_bba8

dec_label_pc_bb99:                                ; preds = %dec_label_pc_bb56
  call void @printLine(ptr @global_var_81230)
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_bba8

dec_label_pc_bba8:                                ; preds = %dec_label_pc_bb99, %dec_label_pc_bb88, %dec_label_pc_bb26
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %8 = call i32 @globalReturnsTrue()
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %stack_var_-40.0.reload, 1
  %or.cond = or i1 %10, %9
  br i1 %or.cond, label %dec_label_pc_bbce, label %dec_label_pc_bbbc

dec_label_pc_bbbc:                                ; preds = %dec_label_pc_bba8
  %11 = mul i32 %stack_var_-40.0.reload, 2
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_bbce

dec_label_pc_bbce:                                ; preds = %dec_label_pc_bbbc, %dec_label_pc_bba8
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_bbe3, label %dec_label_pc_bbde

dec_label_pc_bbde:                                ; preds = %dec_label_pc_bbce
  call void @__stack_chk_fail()
  br label %dec_label_pc_bbe3

dec_label_pc_bbe3:                                ; preds = %dec_label_pc_bbde, %dec_label_pc_bbce
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6ec9b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

