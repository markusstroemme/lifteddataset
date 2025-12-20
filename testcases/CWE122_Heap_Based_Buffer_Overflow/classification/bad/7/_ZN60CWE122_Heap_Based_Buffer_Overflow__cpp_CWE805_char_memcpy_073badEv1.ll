@0 = external global i32
@global_var_6c024 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_13f5d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-144.0.reg2mem = alloca ptr, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c024, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-144.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_13fad, label %dec_label_pc_13f92

dec_label_pc_13f92:                               ; preds = %dec_label_pc_13f5d
  %4 = call i64 @_Znam(i64 50)
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-144.0.reg2mem, align 8
  br label %dec_label_pc_13fad

dec_label_pc_13fad:                               ; preds = %dec_label_pc_13f92, %dec_label_pc_13f5d
  %stack_var_-144.0.reload = load ptr, ptr %stack_var_-144.0.reg2mem, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %7 = ptrtoint ptr %stack_var_-144.0.reload to i64
  %8 = load i64, ptr %stack_var_-136, align 8
  %9 = bitcast ptr %stack_var_-144.0.reload to ptr
  store i64 %8, ptr %9, align 8
  %10 = add i64 %7, 8
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %7, 16
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %7, 24
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %7, 32
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %7, 40
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %7, 48
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %7, 56
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %7, 64
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %7, 72
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %7, 80
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %7, 88
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %7, 96
  %33 = inttoptr i64 %32 to ptr
  %34 = add i64 %7, 99
  %35 = inttoptr i64 %34 to ptr
  store i8 0, ptr %35, align 1
  call void @printLine(ptr %stack_var_-144.0.reload)
  %36 = icmp eq ptr %stack_var_-144.0.reload, null
  br i1 %36, label %dec_label_pc_14069, label %dec_label_pc_1405a

dec_label_pc_1405a:                               ; preds = %dec_label_pc_13fad
  call void @_ZdaPv(ptr %9, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_14069

dec_label_pc_14069:                               ; preds = %dec_label_pc_1405a, %dec_label_pc_13fad
  %37 = call i64 @__readfsqword(i64 40)
  %38 = icmp eq i64 %0, %37
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %38, label %dec_label_pc_1407e, label %dec_label_pc_14079

dec_label_pc_14079:                               ; preds = %dec_label_pc_14069
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1407e

dec_label_pc_1407e:                               ; preds = %dec_label_pc_14079, %dec_label_pc_14069
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

