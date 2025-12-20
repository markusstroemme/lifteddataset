@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_ncpy_22_badGlobal = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2a04c:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_ncpy_22_badGlobal, align 4
  %1 = call ptr @anon1(ptr null)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strncpy(ptr %1, ptr nonnull %4, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @printLine(ptr %1)
  %8 = bitcast ptr %1 to ptr
  call void @free(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_2a0f3, label %dec_label_pc_2a0ee

dec_label_pc_2a0ee:                               ; preds = %dec_label_pc_2a04c
  call void @__stack_chk_fail()
  br label %dec_label_pc_2a0f3

dec_label_pc_2a0f3:                               ; preds = %dec_label_pc_2a0ee, %dec_label_pc_2a04c
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_2a266:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_ncpy_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2a2a6, label %dec_label_pc_2a280

dec_label_pc_2a280:                               ; preds = %dec_label_pc_2a266
  %2 = call ptr @malloc(i32 50)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2a29f, label %dec_label_pc_2a295

dec_label_pc_2a295:                               ; preds = %dec_label_pc_2a280
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2a29f:                               ; preds = %dec_label_pc_2a280
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2a2a6

dec_label_pc_2a2a6:                               ; preds = %dec_label_pc_2a29f, %dec_label_pc_2a266
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

