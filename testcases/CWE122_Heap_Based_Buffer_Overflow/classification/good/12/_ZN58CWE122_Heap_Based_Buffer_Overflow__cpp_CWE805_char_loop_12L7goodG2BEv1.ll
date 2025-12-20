@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_88b6:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  store i8 0, ptr %3, align 1
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %5 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_8937

dec_label_pc_8937:                                ; preds = %dec_label_pc_8937, %dec_label_pc_88b6
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = add i64 %storemerge2.reload, %2
  %7 = add i64 %storemerge2.reload, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = inttoptr i64 %6 to ptr
  store i8 %9, ptr %10, align 1
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_895e, label %dec_label_pc_8937

dec_label_pc_895e:                                ; preds = %dec_label_pc_8937
  %12 = add i64 %2, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  call void @printLine(ptr %3)
  %14 = icmp eq i64 %2, 0
  br i1 %14, label %dec_label_pc_8988, label %dec_label_pc_897c

dec_label_pc_897c:                                ; preds = %dec_label_pc_895e
  %15 = inttoptr i64 %2 to ptr
  call void @_ZdaPv(ptr %15, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_8988

dec_label_pc_8988:                                ; preds = %dec_label_pc_897c, %dec_label_pc_895e
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_899d, label %dec_label_pc_8998

dec_label_pc_8998:                                ; preds = %dec_label_pc_8988
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_899d

dec_label_pc_899d:                                ; preds = %dec_label_pc_8998, %dec_label_pc_8988
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4336e:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

