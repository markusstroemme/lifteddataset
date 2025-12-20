@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b99a:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_b9cd, label %dec_label_pc_b9c3

dec_label_pc_b9c3:                                ; preds = %dec_label_pc_b99a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b9cd:                                ; preds = %dec_label_pc_b99a
  %3 = ptrtoint ptr %0 to i64
  call void @anon1(i64 %3)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_ba43:
  %storemerge1.reg2mem = alloca ptr, align 8
  %rdi = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -48
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_ba9c

dec_label_pc_ba9c:                                ; preds = %dec_label_pc_ba43, %dec_label_pc_ba9c
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %3 = ptrtoint ptr %storemerge1.reload to i64
  %4 = mul i64 %3, 4
  %5 = add i64 %4, %myStruct
  %6 = add i64 %2, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i64 %5 to ptr
  store i32 %8, ptr %9, align 4
  %10 = add i64 %3, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 9 to ptr)
  store ptr %11, ptr %storemerge1.reg2mem, align 8
  br i1 %12, label %dec_label_pc_bac5, label %dec_label_pc_ba9c

dec_label_pc_bac5:                                ; preds = %dec_label_pc_ba9c
  %13 = bitcast ptr %rdi to ptr
  %14 = load i32, ptr %13, align 8
  call void @printIntLine(i32 %14)
  %15 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_baf3, label %dec_label_pc_baee

dec_label_pc_baee:                                ; preds = %dec_label_pc_bac5
  call void @__stack_chk_fail()
  br label %dec_label_pc_baf3

dec_label_pc_baf3:                                ; preds = %dec_label_pc_baee, %dec_label_pc_bac5
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

