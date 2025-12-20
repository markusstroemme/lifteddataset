@global_var_7c82d = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_12b12:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_12b56, label %dec_label_pc_12b4c

dec_label_pc_12b4c:                               ; preds = %dec_label_pc_12b12
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12b56:                               ; preds = %dec_label_pc_12b12
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_12b77, label %dec_label_pc_12b72

dec_label_pc_12b72:                               ; preds = %dec_label_pc_12b56
  call void @__stack_chk_fail()
  br label %dec_label_pc_12b77

dec_label_pc_12b77:                               ; preds = %dec_label_pc_12b72, %dec_label_pc_12b56
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_12bf5:
  %0 = alloca i1, align 1
  %storemerge2.reg2mem = alloca ptr, align 8
  %1 = load i1, ptr %0, align 1
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = ptrtoint ptr %dataVoidPtr to i64
  %6 = add i64 %2, -816
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_12c5d

dec_label_pc_12c5d:                               ; preds = %dec_label_pc_12bf5, %dec_label_pc_12c5d
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge2.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %5
  %10 = add i64 %6, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %9 to ptr
  store i64 %12, ptr %13, align 8
  %14 = add i64 %7, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 99 to ptr)
  store ptr %15, ptr %storemerge2.reg2mem, align 8
  br i1 %16, label %dec_label_pc_12c9a, label %dec_label_pc_12c5d

dec_label_pc_12c9a:                               ; preds = %dec_label_pc_12c5d
  %17 = select i1 %1, i64 -800, i64 800
  %18 = ptrtoint ptr %stack_var_-824 to i64
  %19 = add i64 %17, %18
  call void @printLongLongLine(i64 %19)
  %20 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %3, %21
  br i1 %22, label %dec_label_pc_12cd0, label %dec_label_pc_12ccb

dec_label_pc_12ccb:                               ; preds = %dec_label_pc_12c9a
  call void @__stack_chk_fail()
  br label %dec_label_pc_12cd0

dec_label_pc_12cd0:                               ; preds = %dec_label_pc_12ccb, %dec_label_pc_12c9a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

