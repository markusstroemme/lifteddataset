@global_var_7c820 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_22d90:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_22dd4, label %dec_label_pc_22dca

dec_label_pc_22dca:                               ; preds = %dec_label_pc_22d90
  call void @exit(i32 -1)
  unreachable

dec_label_pc_22dd4:                               ; preds = %dec_label_pc_22d90
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_22df5, label %dec_label_pc_22df0

dec_label_pc_22df0:                               ; preds = %dec_label_pc_22dd4
  call void @__stack_chk_fail()
  br label %dec_label_pc_22df5

dec_label_pc_22df5:                               ; preds = %dec_label_pc_22df0, %dec_label_pc_22dd4
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_22ed7:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rdi = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = ptrtoint ptr %dataPtr to i64
  %4 = add i64 %0, -416
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_22f31

dec_label_pc_22f31:                               ; preds = %dec_label_pc_22ed7, %dec_label_pc_22f31
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge2.reload to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %6, %3
  %8 = add i64 %4, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i64 %7 to ptr
  store i32 %10, ptr %11, align 4
  %12 = add i64 %5, 1
  %13 = inttoptr i64 %12 to ptr
  %14 = icmp ugt ptr %13, inttoptr (i64 99 to ptr)
  store ptr %13, ptr %storemerge2.reg2mem, align 8
  br i1 %14, label %dec_label_pc_22f6c, label %dec_label_pc_22f31

dec_label_pc_22f6c:                               ; preds = %dec_label_pc_22f31
  %15 = bitcast ptr %rdi to ptr
  %16 = load i32, ptr %15, align 8
  call void @printIntLine(i32 %16)
  %17 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_22fa0, label %dec_label_pc_22f9b

dec_label_pc_22f9b:                               ; preds = %dec_label_pc_22f6c
  call void @__stack_chk_fail()
  br label %dec_label_pc_22fa0

dec_label_pc_22fa0:                               ; preds = %dec_label_pc_22f9b, %dec_label_pc_22f6c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

