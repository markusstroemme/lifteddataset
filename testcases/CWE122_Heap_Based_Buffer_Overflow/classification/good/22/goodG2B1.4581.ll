@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_ncpy_22_goodG2B1Global = external local_unnamed_addr global i32
@global_var_4c481 = external constant [21 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2a0f5:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_ncpy_22_goodG2B1Global, align 4
  %1 = call ptr @anon0(ptr null)
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
  br i1 %10, label %dec_label_pc_2a19c, label %dec_label_pc_2a197

dec_label_pc_2a197:                               ; preds = %dec_label_pc_2a0f5
  call void @__stack_chk_fail()
  br label %dec_label_pc_2a19c

dec_label_pc_2a19c:                               ; preds = %dec_label_pc_2a197, %dec_label_pc_2a0f5
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_2a2ac:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_ncpy_22_goodG2B1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2a2d7, label %dec_label_pc_2a2c6

dec_label_pc_2a2c6:                               ; preds = %dec_label_pc_2a2ac
  call void @printLine(ptr @global_var_4c481)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2a2fd

dec_label_pc_2a2d7:                               ; preds = %dec_label_pc_2a2ac
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2a2f6, label %dec_label_pc_2a2ec

dec_label_pc_2a2ec:                               ; preds = %dec_label_pc_2a2d7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2a2f6:                               ; preds = %dec_label_pc_2a2d7
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2a2fd

dec_label_pc_2a2fd:                               ; preds = %dec_label_pc_2a2f6, %dec_label_pc_2a2c6
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

