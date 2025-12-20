@global_var_6dbcb = external constant [21 x i8]
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_89060 = external local_unnamed_addr global i32
@global_var_89238 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_50d0e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_89238, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_50d44, label %dec_label_pc_50d33

dec_label_pc_50d33:                               ; preds = %dec_label_pc_50d0e
  call void @printLine(ptr @global_var_6dbcb)
  br label %dec_label_pc_50d4c

dec_label_pc_50d44:                               ; preds = %dec_label_pc_50d0e
  %3 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %3, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_50d4c

dec_label_pc_50d4c:                               ; preds = %dec_label_pc_50d44, %dec_label_pc_50d33
  %4 = load i32, ptr @global_var_89060, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_50d8d, label %dec_label_pc_50d56

dec_label_pc_50d56:                               ; preds = %dec_label_pc_50d4c
  %stack_var_-40.0.reload = load i64, ptr %stack_var_-40.0.reg2mem, align 8
  %6 = inttoptr i64 %stack_var_-40.0.reload to ptr
  %7 = call ptr @_ZnwmPv(i64 8, ptr %6)
  %8 = ptrtoint ptr %7 to i64
  %9 = bitcast ptr %7 to ptr
  store i32 5, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 10, ptr %11, align 4
  %12 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_50d8d

dec_label_pc_50d8d:                               ; preds = %dec_label_pc_50d56, %dec_label_pc_50d4c
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_50da2, label %dec_label_pc_50d9d

dec_label_pc_50d9d:                               ; preds = %dec_label_pc_50d8d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_50da2

dec_label_pc_50da2:                               ; preds = %dec_label_pc_50d9d, %dec_label_pc_50d8d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

