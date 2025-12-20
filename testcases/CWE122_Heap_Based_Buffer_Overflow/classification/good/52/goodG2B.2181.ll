define void @anon2() local_unnamed_addr {
dec_label_pc_149f8:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_14a2b, label %dec_label_pc_14a21

dec_label_pc_14a21:                               ; preds = %dec_label_pc_149f8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14a2b:                               ; preds = %dec_label_pc_149f8
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  call void @anon0(ptr %3)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_14a75:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_14b4a:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = ptrtoint ptr %data to i64
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_14b93

dec_label_pc_14b93:                               ; preds = %dec_label_pc_14b93, %dec_label_pc_14b4a
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = add i64 %storemerge2.reload, %2
  %5 = add i64 %storemerge2.reload, %3
  %6 = inttoptr i64 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = inttoptr i64 %4 to ptr
  store i8 %7, ptr %8, align 1
  %9 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_14bbd, label %dec_label_pc_14b93

dec_label_pc_14bbd:                               ; preds = %dec_label_pc_14b93
  %10 = add i64 %2, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  call void @printLine(ptr %data)
  %12 = bitcast ptr %data to ptr
  call void @free(ptr %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_14bfe, label %dec_label_pc_14bf9

dec_label_pc_14bf9:                               ; preds = %dec_label_pc_14bbd
  call void @__stack_chk_fail()
  br label %dec_label_pc_14bfe

dec_label_pc_14bfe:                               ; preds = %dec_label_pc_14bf9, %dec_label_pc_14bbd
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

