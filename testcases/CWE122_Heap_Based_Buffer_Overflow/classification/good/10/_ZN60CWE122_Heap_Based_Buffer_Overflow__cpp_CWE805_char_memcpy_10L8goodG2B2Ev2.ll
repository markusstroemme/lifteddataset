@0 = external global i32
@global_var_6c050 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_14caf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-144.0.reg2mem = alloca ptr, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c050, align 4
  %2 = icmp eq i32 %1, 0
  store ptr null, ptr %stack_var_-144.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_14cfe, label %dec_label_pc_14ce3

dec_label_pc_14ce3:                               ; preds = %dec_label_pc_14caf
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store ptr %4, ptr %stack_var_-144.0.reg2mem, align 8
  br label %dec_label_pc_14cfe

dec_label_pc_14cfe:                               ; preds = %dec_label_pc_14ce3, %dec_label_pc_14caf
  %stack_var_-144.0.reload = load ptr, ptr %stack_var_-144.0.reg2mem, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %6 = ptrtoint ptr %stack_var_-144.0.reload to i64
  %7 = load i64, ptr %stack_var_-136, align 8
  %8 = bitcast ptr %stack_var_-144.0.reload to ptr
  store i64 %7, ptr %8, align 8
  %9 = add i64 %6, 8
  %10 = inttoptr i64 %9 to ptr
  %11 = add i64 %6, 16
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %6, 24
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %6, 32
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %6, 40
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %6, 48
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %6, 56
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %6, 64
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %6, 72
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %6, 80
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %6, 88
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %6, 96
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %6, 99
  %34 = inttoptr i64 %33 to ptr
  store i8 0, ptr %34, align 1
  call void @printLine(ptr %stack_var_-144.0.reload)
  %35 = icmp eq ptr %stack_var_-144.0.reload, null
  br i1 %35, label %dec_label_pc_14dba, label %dec_label_pc_14dab

dec_label_pc_14dab:                               ; preds = %dec_label_pc_14cfe
  call void @_ZdaPv(ptr %8, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_14dba

dec_label_pc_14dba:                               ; preds = %dec_label_pc_14dab, %dec_label_pc_14cfe
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %0, %36
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %37, label %dec_label_pc_14dcf, label %dec_label_pc_14dca

dec_label_pc_14dca:                               ; preds = %dec_label_pc_14dba
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_14dcf

dec_label_pc_14dcf:                               ; preds = %dec_label_pc_14dca, %dec_label_pc_14dba
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

