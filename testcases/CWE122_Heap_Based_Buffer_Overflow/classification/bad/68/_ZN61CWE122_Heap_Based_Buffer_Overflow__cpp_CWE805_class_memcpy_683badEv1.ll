@global_var_320 = external constant [20 x i8]
@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_class_memcpy_68_badData = external local_unnamed_addr global ptr
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_d51e:
  %0 = call i64 @_Znam(i64 400)
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_class_memcpy_68_badData, align 8
  %1 = call i64 @anon1()
  ret i64 %1
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_d598:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-832 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_class_memcpy_68_badData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-832 to ptr
  store i64 %3, ptr %4, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_d5d1

dec_label_pc_d5d1:                                ; preds = %dec_label_pc_d5d1, %dec_label_pc_d598
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %0
  %7 = add i64 %6, -816
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %6, -812
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_d607, label %dec_label_pc_d5d1

dec_label_pc_d607:                                ; preds = %dec_label_pc_d5d1
  %12 = load ptr, ptr %stack_var_-832, align 8
  %13 = bitcast ptr %12 to ptr
  %14 = call ptr @memcpy(ptr %13, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %15 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_class_memcpy_68_badData, align 8
  call void @printIntLine(i32 %15)
  %16 = icmp eq ptr %12, null
  br i1 %16, label %dec_label_pc_d64e, label %dec_label_pc_d63f

dec_label_pc_d63f:                                ; preds = %dec_label_pc_d607
  %17 = ptrtoint ptr %stack_var_-824 to i64
  %18 = and i64 %17, 4294967288
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %13, ptr %19)
  br label %dec_label_pc_d64e

dec_label_pc_d64e:                                ; preds = %dec_label_pc_d63f, %dec_label_pc_d607
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_d663, label %dec_label_pc_d65e

dec_label_pc_d65e:                                ; preds = %dec_label_pc_d64e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_d663

dec_label_pc_d663:                                ; preds = %dec_label_pc_d65e, %dec_label_pc_d64e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

