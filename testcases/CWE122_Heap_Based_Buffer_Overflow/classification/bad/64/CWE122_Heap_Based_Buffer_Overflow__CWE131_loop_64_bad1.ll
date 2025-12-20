@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b2dd:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_b321, label %dec_label_pc_b317

dec_label_pc_b317:                                ; preds = %dec_label_pc_b2dd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b321:                                ; preds = %dec_label_pc_b2dd
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_b342, label %dec_label_pc_b33d

dec_label_pc_b33d:                                ; preds = %dec_label_pc_b321
  call void @__stack_chk_fail()
  br label %dec_label_pc_b342

dec_label_pc_b342:                                ; preds = %dec_label_pc_b33d, %dec_label_pc_b321
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_b3c0:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rdi = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataVoidPtr to i64
  %3 = add i64 %0, -48
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_b424

dec_label_pc_b424:                                ; preds = %dec_label_pc_b3c0, %dec_label_pc_b424
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge2.reload to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %5, %2
  %7 = add i64 %3, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i64 %6 to ptr
  store i32 %9, ptr %10, align 4
  %11 = add i64 %4, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 9 to ptr)
  store ptr %12, ptr %storemerge2.reg2mem, align 8
  br i1 %13, label %dec_label_pc_b44d, label %dec_label_pc_b424

dec_label_pc_b44d:                                ; preds = %dec_label_pc_b424
  %14 = bitcast ptr %rdi to ptr
  %15 = load i32, ptr %14, align 8
  call void @printIntLine(i32 %15)
  %16 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_b47b, label %dec_label_pc_b476

dec_label_pc_b476:                                ; preds = %dec_label_pc_b44d
  call void @__stack_chk_fail()
  br label %dec_label_pc_b47b

dec_label_pc_b47b:                                ; preds = %dec_label_pc_b476, %dec_label_pc_b44d
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

