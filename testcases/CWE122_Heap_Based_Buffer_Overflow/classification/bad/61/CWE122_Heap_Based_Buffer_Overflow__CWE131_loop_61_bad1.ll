@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_ae95:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @anon1(ptr null)
  %3 = ptrtoint ptr %2 to i64
  %4 = add i64 %0, -48
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_aefa

dec_label_pc_aefa:                                ; preds = %dec_label_pc_ae95, %dec_label_pc_aefa
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge1.reload to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %6, %3
  %8 = add i64 %4, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i64 %7 to ptr
  store i32 %10, ptr %11, align 4
  %12 = add i64 %5, 1
  %13 = inttoptr i64 %12 to ptr
  %14 = icmp ugt ptr %13, inttoptr (i64 9 to ptr)
  store ptr %13, ptr %storemerge1.reg2mem, align 8
  br i1 %14, label %dec_label_pc_af23, label %dec_label_pc_aefa

dec_label_pc_af23:                                ; preds = %dec_label_pc_aefa
  %15 = load i32, ptr %2, align 4
  call void @printIntLine(i32 %15)
  %16 = bitcast ptr %2 to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_af51, label %dec_label_pc_af4c

dec_label_pc_af4c:                                ; preds = %dec_label_pc_af23
  call void @__stack_chk_fail()
  br label %dec_label_pc_af51

dec_label_pc_af51:                                ; preds = %dec_label_pc_af4c, %dec_label_pc_af23
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_b026:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_b055, label %dec_label_pc_b04b

dec_label_pc_b04b:                                ; preds = %dec_label_pc_b026
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b055:                                ; preds = %dec_label_pc_b026
  %3 = bitcast ptr %0 to ptr
  ret ptr %3
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

