@CWE122_Heap_Based_Buffer_Overflow__sizeof_double_22_goodG2B1Global = external local_unnamed_addr global i32
@global_var_33a58 = external constant [21 x i8]
@global_var_34bf2 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5dc9:
  store i32 0, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_double_22_goodG2B1Global, align 4
  %0 = call ptr @anon0(ptr null)
  %1 = load double, ptr %0, align 8
  %2 = bitcast double %1 to i64
  %3 = call i128 @__asm_movq(i64 %2)
  %4 = trunc i128 %3 to i64
  %5 = bitcast i64 %4 to double
  call void @printDoubleLine(double %5)
  %6 = bitcast ptr %0 to ptr
  call void @free(ptr %6)
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_5ed3:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_double_22_goodG2B1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5efe, label %dec_label_pc_5eed

dec_label_pc_5eed:                                ; preds = %dec_label_pc_5ed3
  call void @printLine(ptr @global_var_33a58)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_5f2d

dec_label_pc_5efe:                                ; preds = %dec_label_pc_5ed3
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_5f1d, label %dec_label_pc_5f13

dec_label_pc_5f13:                                ; preds = %dec_label_pc_5efe
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5f1d:                                ; preds = %dec_label_pc_5efe
  %5 = bitcast ptr %2 to ptr
  %6 = call i128 @__asm_movsd(i64 9098483789791991595)
  %7 = call i64 @__asm_movsd.211(i128 %6)
  store i64 %7, ptr %2, align 8
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_5f2d

dec_label_pc_5f2d:                                ; preds = %dec_label_pc_5f1d, %dec_label_pc_5eed
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_2b879:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_2b89c, label %dec_label_pc_2b890

dec_label_pc_2b890:                               ; preds = %dec_label_pc_2b879
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_2b89c

dec_label_pc_2b89c:                               ; preds = %dec_label_pc_2b890, %dec_label_pc_2b879
  ret void
}

define void @printDoubleLine(double %doubleNumber) local_unnamed_addr {
dec_label_pc_2bad7:
  %0 = fptrunc double %doubleNumber to float
  %1 = bitcast float %0 to i32
  %2 = sext i32 %1 to i128
  %3 = call i64 @__asm_movsd.211(i128 %2)
  %4 = call i128 @__asm_movq(i64 %3)
  %5 = trunc i128 %4 to i64
  %6 = bitcast i64 %5 to double
  %7 = call i32 (ptr, ...) @printf(ptr @global_var_34bf2, double %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare i64 @__asm_movsd.211(i128) local_unnamed_addr

declare i128 @__asm_movq(i64) local_unnamed_addr

