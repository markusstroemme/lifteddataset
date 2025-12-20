@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_a6a7:
  %0 = call i64 @_Znam(i64 50)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_a6d2:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_a729

dec_label_pc_a729:                                ; preds = %dec_label_pc_a729, %dec_label_pc_a6d2
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = add i64 %storemerge2.reload, %1
  %5 = add i64 %storemerge2.reload, %3
  %6 = inttoptr i64 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = inttoptr i64 %4 to ptr
  store i8 %7, ptr %8, align 1
  %9 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_a750, label %dec_label_pc_a729

dec_label_pc_a750:                                ; preds = %dec_label_pc_a729
  %10 = inttoptr i64 %1 to ptr
  %11 = add i64 %1, 99
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  call void @printLine(ptr %10)
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %dec_label_pc_a77a, label %dec_label_pc_a76e

dec_label_pc_a76e:                                ; preds = %dec_label_pc_a750
  %14 = inttoptr i64 %1 to ptr
  call void @_ZdaPv(ptr %14, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_a77a

dec_label_pc_a77a:                                ; preds = %dec_label_pc_a76e, %dec_label_pc_a750
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_a78f, label %dec_label_pc_a78a

dec_label_pc_a78a:                                ; preds = %dec_label_pc_a77a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_a78f

dec_label_pc_a78f:                                ; preds = %dec_label_pc_a78a, %dec_label_pc_a77a
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

