@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_c4e3:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 50)
  %2 = inttoptr i64 %1 to ptr
  store i8 0, ptr %2, align 1
  %3 = call i64 @anon1(i64 %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_c544, label %dec_label_pc_c53f

dec_label_pc_c53f:                                ; preds = %dec_label_pc_c4e3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c544

dec_label_pc_c544:                                ; preds = %dec_label_pc_c53f, %dec_label_pc_c4e3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_c5b9:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_c60d

dec_label_pc_c60d:                                ; preds = %dec_label_pc_c60d, %dec_label_pc_c5b9
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %3 = add i64 %storemerge1.reload, %arg1
  %4 = add i64 %storemerge1.reload, %2
  %5 = inttoptr i64 %4 to ptr
  %6 = load i8, ptr %5, align 1
  %7 = inttoptr i64 %3 to ptr
  store i8 %6, ptr %7, align 1
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c634, label %dec_label_pc_c60d

dec_label_pc_c634:                                ; preds = %dec_label_pc_c60d
  %9 = add i64 %arg1, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  %11 = inttoptr i64 %arg1 to ptr
  call void @printLine(ptr %11)
  %12 = icmp eq i64 %arg1, 0
  br i1 %12, label %dec_label_pc_c65e, label %dec_label_pc_c652

dec_label_pc_c652:                                ; preds = %dec_label_pc_c634
  %13 = inttoptr i64 %arg1 to ptr
  call void @_ZdaPv(ptr %13, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_c65e

dec_label_pc_c65e:                                ; preds = %dec_label_pc_c652, %dec_label_pc_c634
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_c673, label %dec_label_pc_c66e

dec_label_pc_c66e:                                ; preds = %dec_label_pc_c65e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c673

dec_label_pc_c673:                                ; preds = %dec_label_pc_c66e, %dec_label_pc_c65e
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

