@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_236e3:
  %0 = call ptr @malloc(i32 200)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_23716, label %dec_label_pc_2370c

dec_label_pc_2370c:                               ; preds = %dec_label_pc_236e3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_23716:                               ; preds = %dec_label_pc_236e3
  %3 = ptrtoint ptr %0 to i64
  call void @anon1(i64 %3)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_2378c:
  %storemerge1.reg2mem = alloca ptr, align 8
  %rdi = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = add i64 %0, -416
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_237e3

dec_label_pc_237e3:                               ; preds = %dec_label_pc_2378c, %dec_label_pc_237e3
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge1.reload to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %5, %myStruct
  %7 = add i64 %3, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i64 %6 to ptr
  store i32 %9, ptr %10, align 4
  %11 = add i64 %4, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge1.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2381e, label %dec_label_pc_237e3

dec_label_pc_2381e:                               ; preds = %dec_label_pc_237e3
  %14 = bitcast ptr %rdi to ptr
  %15 = load i32, ptr %14, align 8
  call void @printIntLine(i32 %15)
  %16 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_23852, label %dec_label_pc_2384d

dec_label_pc_2384d:                               ; preds = %dec_label_pc_2381e
  call void @__stack_chk_fail()
  br label %dec_label_pc_23852

dec_label_pc_23852:                               ; preds = %dec_label_pc_2384d, %dec_label_pc_2381e
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

