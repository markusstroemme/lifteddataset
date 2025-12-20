@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_a985:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_a9b8, label %dec_label_pc_a9ae

dec_label_pc_a9ae:                                ; preds = %dec_label_pc_a985
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a9b8:                                ; preds = %dec_label_pc_a985
  %3 = bitcast ptr %0 to ptr
  call void @anon1(ptr %3)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_aa1e:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_aa5c:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_aa9a:
  %storemerge2.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %data to i64
  %3 = add i64 %0, -48
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_aaeb

dec_label_pc_aaeb:                                ; preds = %dec_label_pc_aaeb, %dec_label_pc_aa9a
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = mul i64 %storemerge2.reload, 4
  %5 = add i64 %4, %2
  %6 = add i64 %3, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i64 %5 to ptr
  store i32 %8, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 10
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_ab14, label %dec_label_pc_aaeb

dec_label_pc_ab14:                                ; preds = %dec_label_pc_aaeb
  %11 = bitcast ptr %rdi to ptr
  %12 = load i32, ptr %11, align 8
  call void @printIntLine(i32 %12)
  %13 = bitcast ptr %data to ptr
  call void @free(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_ab42, label %dec_label_pc_ab3d

dec_label_pc_ab3d:                                ; preds = %dec_label_pc_ab14
  call void @__stack_chk_fail()
  br label %dec_label_pc_ab42

dec_label_pc_ab42:                                ; preds = %dec_label_pc_ab3d, %dec_label_pc_ab14
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

