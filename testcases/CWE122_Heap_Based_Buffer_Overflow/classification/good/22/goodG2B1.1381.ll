@CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_ncpy_22_goodG2B1Global = external local_unnamed_addr global i32
@global_var_4bf45 = external constant [21 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_e293:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_ncpy_22_goodG2B1Global, align 4
  %1 = call ptr @anon0(ptr null)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = call ptr @strncpy(ptr %1, ptr nonnull %2, i32 %4)
  call void @printLine(ptr %1)
  %6 = bitcast ptr %1 to ptr
  call void @free(ptr %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_e338, label %dec_label_pc_e333

dec_label_pc_e333:                                ; preds = %dec_label_pc_e293
  call void @__stack_chk_fail()
  br label %dec_label_pc_e338

dec_label_pc_e338:                                ; preds = %dec_label_pc_e333, %dec_label_pc_e293
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_e43f:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_ncpy_22_goodG2B1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_e46a, label %dec_label_pc_e459

dec_label_pc_e459:                                ; preds = %dec_label_pc_e43f
  call void @printLine(ptr @global_var_4bf45)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_e489

dec_label_pc_e46a:                                ; preds = %dec_label_pc_e43f
  %2 = call ptr @malloc(i32 11)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_e489, label %dec_label_pc_e47f

dec_label_pc_e47f:                                ; preds = %dec_label_pc_e46a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e489:                                ; preds = %dec_label_pc_e46a, %dec_label_pc_e459
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

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

