@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7863:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 50)
  %2 = inttoptr i64 %1 to ptr
  store i8 0, ptr %2, align 1
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_78bf

dec_label_pc_78bf:                                ; preds = %dec_label_pc_78bf, %dec_label_pc_7863
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = add i64 %storemerge2.reload, %1
  %6 = add i64 %storemerge2.reload, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = inttoptr i64 %5 to ptr
  store i8 %8, ptr %9, align 1
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_78e6, label %dec_label_pc_78bf

dec_label_pc_78e6:                                ; preds = %dec_label_pc_78bf
  %11 = add i64 %1, 99
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  call void @printLine(ptr %2)
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %dec_label_pc_7910, label %dec_label_pc_7904

dec_label_pc_7904:                                ; preds = %dec_label_pc_78e6
  %14 = inttoptr i64 %1 to ptr
  call void @_ZdaPv(ptr %14, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_7910

dec_label_pc_7910:                                ; preds = %dec_label_pc_7904, %dec_label_pc_78e6
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_7925, label %dec_label_pc_7920

dec_label_pc_7920:                                ; preds = %dec_label_pc_7910
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7925

dec_label_pc_7925:                                ; preds = %dec_label_pc_7920, %dec_label_pc_7910
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

