@global_var_52905 = external constant [3 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_33573:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @anon1(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %3, i32 100, ptr @global_var_52905, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %3)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %dec_label_pc_33603, label %dec_label_pc_335f7

dec_label_pc_335f7:                               ; preds = %dec_label_pc_33573
  %6 = inttoptr i64 %1 to ptr
  call void @_ZdaPv(ptr %6, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_33603

dec_label_pc_33603:                               ; preds = %dec_label_pc_335f7, %dec_label_pc_33573
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_33618, label %dec_label_pc_33613

dec_label_pc_33613:                               ; preds = %dec_label_pc_33603
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_33618

dec_label_pc_33618:                               ; preds = %dec_label_pc_33613, %dec_label_pc_33603
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_33655:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  ret i64 %0
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

