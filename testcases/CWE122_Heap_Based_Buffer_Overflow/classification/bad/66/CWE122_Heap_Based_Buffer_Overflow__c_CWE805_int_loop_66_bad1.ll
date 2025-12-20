@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2345c:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 200)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_2349e, label %dec_label_pc_23494

dec_label_pc_23494:                               ; preds = %dec_label_pc_2345c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2349e:                               ; preds = %dec_label_pc_2345c
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_234c7, label %dec_label_pc_234c2

dec_label_pc_234c2:                               ; preds = %dec_label_pc_2349e
  call void @__stack_chk_fail()
  br label %dec_label_pc_234c7

dec_label_pc_234c7:                               ; preds = %dec_label_pc_234c2, %dec_label_pc_2349e
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_2354b:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = add i64 %0, -416
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_235a6

dec_label_pc_235a6:                               ; preds = %dec_label_pc_2354b, %dec_label_pc_235a6
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge1.reload to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %5
  %11 = add i64 %7, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i64 %10 to ptr
  store i32 %13, ptr %14, align 4
  %15 = add i64 %8, 1
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt ptr %16, inttoptr (i64 99 to ptr)
  store ptr %16, ptr %storemerge1.reg2mem, align 8
  br i1 %17, label %dec_label_pc_235e1, label %dec_label_pc_235a6

dec_label_pc_235e1:                               ; preds = %dec_label_pc_235a6
  %18 = inttoptr i64 %5 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %20 = inttoptr i64 %5 to ptr
  call void @free(ptr %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  br i1 %22, label %dec_label_pc_23615, label %dec_label_pc_23610

dec_label_pc_23610:                               ; preds = %dec_label_pc_235e1
  call void @__stack_chk_fail()
  br label %dec_label_pc_23615

dec_label_pc_23615:                               ; preds = %dec_label_pc_23610, %dec_label_pc_235e1
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

