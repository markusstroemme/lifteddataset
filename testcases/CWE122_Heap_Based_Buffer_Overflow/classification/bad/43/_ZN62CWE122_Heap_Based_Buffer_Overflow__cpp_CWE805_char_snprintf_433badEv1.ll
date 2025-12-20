@global_var_528f0 = external constant [3 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_3278a:
  %0 = call i64 @_Znam(i64 50)
  %1 = bitcast ptr %arg1 to ptr
  store i64 %0, ptr %1, align 8
  store i8 0, ptr inttoptr (i64 50 to ptr), align 2
  ret i64 50
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_327bb:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-128, align 8
  %1 = call i64 @anon0(ptr nonnull %stack_var_-128)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = load ptr, ptr %stack_var_-128, align 8
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %3, i32 100, ptr @global_var_528f0, ptr nonnull %stack_var_-120)
  %5 = load ptr, ptr %stack_var_-128, align 8
  call void @printLine(ptr %5)
  %6 = load ptr, ptr %stack_var_-128, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_32849, label %dec_label_pc_3283d

dec_label_pc_3283d:                               ; preds = %dec_label_pc_327bb
  %8 = bitcast ptr %6 to ptr
  call void @_ZdaPv(ptr %8, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_32849

dec_label_pc_32849:                               ; preds = %dec_label_pc_3283d, %dec_label_pc_327bb
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_3285e, label %dec_label_pc_32859

dec_label_pc_32859:                               ; preds = %dec_label_pc_32849
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3285e

dec_label_pc_3285e:                               ; preds = %dec_label_pc_32859, %dec_label_pc_32849
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

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

