@CWE122_Heap_Based_Buffer_Overflow__c_CWE806_char_ncat_22_goodG2B1Global = external local_unnamed_addr global i32
@global_var_48491 = external constant [21 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1ca41:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1ca7b, label %dec_label_pc_1ca71

dec_label_pc_1ca71:                               ; preds = %dec_label_pc_1ca41
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1ca7b:                               ; preds = %dec_label_pc_1ca41
  %4 = bitcast ptr %1 to ptr
  store i32 0, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE806_char_ncat_22_goodG2B1Global, align 4
  %5 = call ptr @anon0(ptr %4)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = call i32 @strlen(ptr %5)
  %7 = bitcast ptr %stack_var_-72 to ptr
  %8 = call ptr @strncat(ptr nonnull %7, ptr %5, i32 %6)
  call void @printLine(ptr %5)
  %9 = bitcast ptr %5 to ptr
  call void @free(ptr %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1cb1e, label %dec_label_pc_1cb19

dec_label_pc_1cb19:                               ; preds = %dec_label_pc_1ca7b
  call void @__stack_chk_fail()
  br label %dec_label_pc_1cb1e

dec_label_pc_1cb1e:                               ; preds = %dec_label_pc_1cb19, %dec_label_pc_1ca7b
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_1cc5f:
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE806_char_ncat_22_goodG2B1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1cc8a, label %dec_label_pc_1cc79

dec_label_pc_1cc79:                               ; preds = %dec_label_pc_1cc5f
  call void @printLine(ptr @global_var_48491)
  br label %dec_label_pc_1ccab

dec_label_pc_1cc8a:                               ; preds = %dec_label_pc_1cc5f
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_1ccab

dec_label_pc_1ccab:                               ; preds = %dec_label_pc_1cc8a, %dec_label_pc_1cc79
  ret ptr %data
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

