@global_var_52ceb = external constant [3 x i8]
@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_35526:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = call i64 @_Znam(i64 50)
  store i64 %1, ptr %result, align 8
  store i8 0, ptr inttoptr (i64 50 to ptr), align 2
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_35566:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %2, i32 100, ptr @global_var_52ceb, ptr nonnull %stack_var_-120)
  call void @printLine(ptr nonnull %2)
  call void @_ZdaPv(ptr nonnull %stack_var_-120, ptr inttoptr (i64 100 to ptr))
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_35605, label %dec_label_pc_35600

dec_label_pc_35600:                               ; preds = %dec_label_pc_35566
  call void @__stack_chk_fail()
  br label %dec_label_pc_35605

dec_label_pc_35605:                               ; preds = %dec_label_pc_35600, %dec_label_pc_35566
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_356e9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, ptr null)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3573f, label %dec_label_pc_3573a

dec_label_pc_3573a:                               ; preds = %dec_label_pc_356e9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3573f

dec_label_pc_3573f:                               ; preds = %dec_label_pc_3573a, %dec_label_pc_356e9
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

