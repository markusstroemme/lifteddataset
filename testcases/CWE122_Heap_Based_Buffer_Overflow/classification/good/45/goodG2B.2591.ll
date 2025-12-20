@CWE122_Heap_Based_Buffer_Overflow__c_src_char_cpy_45_goodG2BData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_1762e:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__c_src_char_cpy_45_goodG2BData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @strcpy(ptr nonnull %2, ptr %3)
  call void @printLine(ptr %3)
  %5 = inttoptr i64 %1 to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_176ca, label %dec_label_pc_176c5

dec_label_pc_176c5:                               ; preds = %dec_label_pc_1762e
  call void @__stack_chk_fail()
  br label %dec_label_pc_176ca

dec_label_pc_176ca:                               ; preds = %dec_label_pc_176c5, %dec_label_pc_1762e
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_176cc:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_176f7, label %dec_label_pc_176ed

dec_label_pc_176ed:                               ; preds = %dec_label_pc_176cc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_176f7:                               ; preds = %dec_label_pc_176cc
  %3 = ptrtoint ptr %0 to i64
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = add i64 %3, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_src_char_cpy_45_goodG2BData, align 8
  call void @anon0()
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

