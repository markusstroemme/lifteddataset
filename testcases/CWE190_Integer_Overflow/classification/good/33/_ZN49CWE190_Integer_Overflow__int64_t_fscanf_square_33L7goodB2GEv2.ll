@global_var_90a90 = external constant [4 x i8]
@global_var_90a98 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32
@global_var_c3080 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_53e90:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-48, align 8
  %1 = load ptr, ptr @global_var_c3080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_90a90, ptr nonnull %stack_var_-48)
  %3 = load i64, ptr %stack_var_-48, align 8
  %4 = sub i64 0, %3
  %5 = icmp slt i64 %4, 0
  %6 = icmp eq i1 %5, false
  %7 = select i1 %6, i64 %4, i64 %3
  %8 = icmp slt i64 %7, 3037000001
  br i1 %8, label %dec_label_pc_53f09, label %dec_label_pc_53f23

dec_label_pc_53f09:                               ; preds = %dec_label_pc_53e90
  %9 = mul i64 %3, %3
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_53f32

dec_label_pc_53f23:                               ; preds = %dec_label_pc_53e90
  call void @printLine(ptr @global_var_90a98)
  br label %dec_label_pc_53f32

dec_label_pc_53f32:                               ; preds = %dec_label_pc_53f23, %dec_label_pc_53f09
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_53f47, label %dec_label_pc_53f42

dec_label_pc_53f42:                               ; preds = %dec_label_pc_53f32
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_53f47

dec_label_pc_53f47:                               ; preds = %dec_label_pc_53f42, %dec_label_pc_53f32
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

