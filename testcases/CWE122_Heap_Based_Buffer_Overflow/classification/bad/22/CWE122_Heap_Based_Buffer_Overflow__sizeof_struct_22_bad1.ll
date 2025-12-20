@CWE122_Heap_Based_Buffer_Overflow__sizeof_struct_22_badGlobal = external local_unnamed_addr global i32
@global_var_34bf6 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_c10e:
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_struct_22_badGlobal, align 4
  %0 = call ptr @anon1(ptr null)
  call void @printStructLine(ptr %0)
  %1 = bitcast ptr %0 to ptr
  call void @free(ptr %1)
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_c208:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_struct_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_c256, label %dec_label_pc_c222

dec_label_pc_c222:                                ; preds = %dec_label_pc_c208
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_c241, label %dec_label_pc_c237

dec_label_pc_c237:                                ; preds = %dec_label_pc_c222
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c241:                                ; preds = %dec_label_pc_c222
  %5 = bitcast ptr %2 to ptr
  store i32 1, ptr %5, align 4
  %6 = ptrtoint ptr %2 to i64
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_c256

dec_label_pc_c256:                                ; preds = %dec_label_pc_c241, %dec_label_pc_c208
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_2bb08:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_34bf6, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

