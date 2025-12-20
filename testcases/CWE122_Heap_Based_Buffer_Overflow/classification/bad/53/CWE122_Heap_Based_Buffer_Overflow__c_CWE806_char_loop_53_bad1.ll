define void @anon0() local_unnamed_addr {
dec_label_pc_ba64:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_ba8f, label %dec_label_pc_ba85

dec_label_pc_ba85:                                ; preds = %dec_label_pc_ba64
  call void @exit(i32 -1)
  unreachable

dec_label_pc_ba8f:                                ; preds = %dec_label_pc_ba64
  %3 = bitcast ptr %0 to ptr
  %4 = call ptr @memset(ptr %0, i32 65, i32 99)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @anon1(ptr %3)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_bb2f:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_bb6d:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_bbab:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %data)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_bc44, label %dec_label_pc_bc1a.lr.ph

dec_label_pc_bc1a.lr.ph:                          ; preds = %dec_label_pc_bbab
  %3 = sext i32 %1 to i64
  %4 = ptrtoint ptr %data to i64
  %5 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_bc1a

dec_label_pc_bc1a:                                ; preds = %dec_label_pc_bc1a.lr.ph, %dec_label_pc_bc1a
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = add i64 %storemerge2.reload, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = add i64 %storemerge2.reload, %5
  %10 = inttoptr i64 %9 to ptr
  store i8 %8, ptr %10, align 1
  %11 = add nuw i64 %storemerge2.reload, 1
  %12 = icmp ult i64 %11, %3
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %12, label %dec_label_pc_bc1a, label %dec_label_pc_bc44

dec_label_pc_bc44:                                ; preds = %dec_label_pc_bc1a, %dec_label_pc_bbab
  call void @printLine(ptr %data)
  %13 = bitcast ptr %data to ptr
  call void @free(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_bc75, label %dec_label_pc_bc70

dec_label_pc_bc70:                                ; preds = %dec_label_pc_bc44
  call void @__stack_chk_fail()
  br label %dec_label_pc_bc75

dec_label_pc_bc75:                                ; preds = %dec_label_pc_bc70, %dec_label_pc_bc44
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

