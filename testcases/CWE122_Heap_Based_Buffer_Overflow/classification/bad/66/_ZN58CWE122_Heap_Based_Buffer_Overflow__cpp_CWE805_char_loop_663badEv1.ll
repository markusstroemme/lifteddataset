@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_c28d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 50)
  %2 = inttoptr i64 %1 to ptr
  store i8 0, ptr %2, align 1
  %3 = bitcast ptr %stack_var_-56 to ptr
  %4 = call i64 @anon1(ptr nonnull %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_c2ee, label %dec_label_pc_c2e9

dec_label_pc_c2e9:                                ; preds = %dec_label_pc_c28d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c2ee

dec_label_pc_c2ee:                                ; preds = %dec_label_pc_c2e9, %dec_label_pc_c28d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_c363:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_c3bb

dec_label_pc_c3bb:                                ; preds = %dec_label_pc_c3bb, %dec_label_pc_c363
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = add i64 %storemerge2.reload, %4
  %8 = add i64 %storemerge2.reload, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = inttoptr i64 %7 to ptr
  store i8 %10, ptr %11, align 1
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c3e2, label %dec_label_pc_c3bb

dec_label_pc_c3e2:                                ; preds = %dec_label_pc_c3bb
  %13 = inttoptr i64 %4 to ptr
  %14 = add i64 %4, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  call void @printLine(ptr %13)
  %16 = icmp eq i64 %4, 0
  br i1 %16, label %dec_label_pc_c40c, label %dec_label_pc_c400

dec_label_pc_c400:                                ; preds = %dec_label_pc_c3e2
  %17 = inttoptr i64 %4 to ptr
  call void @_ZdaPv(ptr %17, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_c40c

dec_label_pc_c40c:                                ; preds = %dec_label_pc_c400, %dec_label_pc_c3e2
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_c421, label %dec_label_pc_c41c

dec_label_pc_c41c:                                ; preds = %dec_label_pc_c40c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c421

dec_label_pc_c421:                                ; preds = %dec_label_pc_c41c, %dec_label_pc_c40c
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

