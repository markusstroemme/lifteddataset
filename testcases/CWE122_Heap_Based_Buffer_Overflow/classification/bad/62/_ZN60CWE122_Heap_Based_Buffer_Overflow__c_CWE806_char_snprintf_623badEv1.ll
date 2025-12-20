@global_var_497a5 = external constant [3 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3aae8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-96 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-96, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_3ab25, label %dec_label_pc_3ab1b

dec_label_pc_3ab1b:                               ; preds = %dec_label_pc_3aae8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3ab25:                               ; preds = %dec_label_pc_3aae8
  %5 = call i64 @anon1(ptr nonnull %stack_var_-96)
  store i64 0, ptr %stack_var_-88, align 8
  %6 = load ptr, ptr %stack_var_-96, align 8
  %7 = call i32 @strlen(ptr %6)
  %8 = bitcast ptr %stack_var_-88 to ptr
  %9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %8, i32 %7, ptr @global_var_497a5, ptr %6)
  %10 = load ptr, ptr %stack_var_-96, align 8
  call void @printLine(ptr %10)
  %11 = load ptr, ptr %stack_var_-96, align 8
  %12 = bitcast ptr %11 to ptr
  call void @free(ptr %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_3abc2, label %dec_label_pc_3abbd

dec_label_pc_3abbd:                               ; preds = %dec_label_pc_3ab25
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3abc2

dec_label_pc_3abc2:                               ; preds = %dec_label_pc_3abbd, %dec_label_pc_3ab25
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3acb8:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

