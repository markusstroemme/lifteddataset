@CWE122_Heap_Based_Buffer_Overflow__c_dest_char_cat_45_goodG2BData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_7a3a:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__c_dest_char_cat_45_goodG2BData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strcat(ptr %3, ptr nonnull %4)
  call void @printLine(ptr %3)
  %6 = inttoptr i64 %1 to ptr
  call void @free(ptr %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_7aba, label %dec_label_pc_7ab5

dec_label_pc_7ab5:                                ; preds = %dec_label_pc_7a3a
  call void @__stack_chk_fail()
  br label %dec_label_pc_7aba

dec_label_pc_7aba:                                ; preds = %dec_label_pc_7ab5, %dec_label_pc_7a3a
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_7abc:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_7aef, label %dec_label_pc_7ae5

dec_label_pc_7ae5:                                ; preds = %dec_label_pc_7abc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7aef:                                ; preds = %dec_label_pc_7abc
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  %4 = ptrtoint ptr %0 to i64
  store i64 %4, ptr @CWE122_Heap_Based_Buffer_Overflow__c_dest_char_cat_45_goodG2BData, align 8
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

