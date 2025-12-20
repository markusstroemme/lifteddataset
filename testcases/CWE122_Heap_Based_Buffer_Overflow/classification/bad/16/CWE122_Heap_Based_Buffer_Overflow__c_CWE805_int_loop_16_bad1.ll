@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2055a:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 200)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_205a8, label %dec_label_pc_2059e

dec_label_pc_2059e:                               ; preds = %dec_label_pc_2055a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_205a8:                               ; preds = %dec_label_pc_2055a
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = add i64 %5, -416
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_205cd

dec_label_pc_205cd:                               ; preds = %dec_label_pc_205a8, %dec_label_pc_205cd
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge1.reload to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %4
  %11 = add i64 %7, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i64 %10 to ptr
  store i32 %13, ptr %14, align 4
  %15 = add i64 %8, 1
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt ptr %16, inttoptr (i64 99 to ptr)
  store ptr %16, ptr %storemerge1.reg2mem, align 8
  br i1 %17, label %dec_label_pc_20608, label %dec_label_pc_205cd

dec_label_pc_20608:                               ; preds = %dec_label_pc_205cd
  %18 = bitcast ptr %1 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  call void @free(ptr %1)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_2063c, label %dec_label_pc_20637

dec_label_pc_20637:                               ; preds = %dec_label_pc_20608
  call void @__stack_chk_fail()
  br label %dec_label_pc_2063c

dec_label_pc_2063c:                               ; preds = %dec_label_pc_20637, %dec_label_pc_20608
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

