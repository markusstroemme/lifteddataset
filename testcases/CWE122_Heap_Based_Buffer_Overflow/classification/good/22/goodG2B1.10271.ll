@CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_cpy_22_goodG2B1Global = external local_unnamed_addr global i32
@global_var_b9089 = external constant [21 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_62de9:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_cpy_22_goodG2B1Global, align 4
  %1 = call ptr @anon0(ptr null)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call ptr @strcpy(ptr %1, ptr nonnull %2)
  call void @printLine(ptr %1)
  %4 = bitcast ptr %1 to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_62e7e, label %dec_label_pc_62e79

dec_label_pc_62e79:                               ; preds = %dec_label_pc_62de9
  call void @__stack_chk_fail()
  br label %dec_label_pc_62e7e

dec_label_pc_62e7e:                               ; preds = %dec_label_pc_62e79, %dec_label_pc_62de9
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_62f75:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_cpy_22_goodG2B1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_62fa0, label %dec_label_pc_62f8f

dec_label_pc_62f8f:                               ; preds = %dec_label_pc_62f75
  call void @printLine(ptr @global_var_b9089)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_62fbf

dec_label_pc_62fa0:                               ; preds = %dec_label_pc_62f75
  %2 = call ptr @malloc(i32 11)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_62fbf, label %dec_label_pc_62fb5

dec_label_pc_62fb5:                               ; preds = %dec_label_pc_62fa0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_62fbf:                               ; preds = %dec_label_pc_62fa0, %dec_label_pc_62f8f
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

